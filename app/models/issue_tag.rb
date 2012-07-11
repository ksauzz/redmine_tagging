class IssueTag < ActiveRecord::Base
  set_primary_key :id
  belongs_to :issue

  def readonly?
    return true
  end
         
  # Prevent objects from being destroyed
  def before_destroy
    raise ActiveRecord::ReadOnlyRecord
  end
end
