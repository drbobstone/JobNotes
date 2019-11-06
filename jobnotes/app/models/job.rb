# Job is a record talking about the details of a given job
class Job < ApplicationRecord
  validates :customer_ref_id, presence: true, length: { minimum: 2, maximum: 100 }
  def self.search(search)
  #find(:all, conditions: ['customer_ref_id LIKE ?', "%#{search}%"])
    @where_clause = ' lower(customer_ref_id) LIKE :search ' \
      ' OR lower(subdivision) LIKE :search '

    @search_var = '%' + search + '%'
    all.where(@where_clause, search: @search_var)
  end
end
