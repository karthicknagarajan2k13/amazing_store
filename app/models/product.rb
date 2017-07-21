class Product < ActiveRecord::Base
	belongs_to :product_type
	filterrific(
		default_filter_params: { sorted_by: 'created_at_desc' },
		available_filters: [
			:sorted_by,
			:search_query,
			:with_product_type_id
		]
	)
	self.per_page = 10

	  scope :search_query, lambda { |query|
    return nil  if query.blank?
    # condition query, parse into individual keywords
    terms = query.downcase.split(/\s+/)
    # replace "*" with "%" for wildcard searches,
    # append '%', remove duplicate '%'s
    terms = terms.map { |e|
      (e.gsub('*', '%') + '%').gsub(/%+/, '%')
    }
    # configure number of OR conditions for provision
    # of interpolation arguments. Adjust this if you
    # change the number of OR conditions.
    num_or_conditions = 1
    where(
      terms.map {
        or_clauses = [
          "LOWER(products.name) LIKE ?"
        ].join(' OR ')
        "(#{ or_clauses })"
      }.join(' AND '),
      *terms.map { |e| [e] * num_or_conditions }.flatten
    )
  }

  scope :sorted_by, lambda { |sort_option|
    # extract the sort direction from the param value.
    direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
    case sort_option.to_s
    when /^created_at_/
      order("products.created_at #{ direction }")
    when /^name_/
      order("LOWER(products.name) #{ direction }")
    else
      raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
    end
  }
  scope :with_product_type_id, lambda { |type_ids|
    where(:product_type_id => [*type_ids])
  }


  def self.options_for_sorted_by
    [
      ['Name (a-z)', 'name_asc'],
      ['Name (z-a)', 'name_desc'],
      ['Created (newest first)', 'created_at_desc'],
      ['Created (oldest first)', 'created_at_asc']
    ]
  end
end
