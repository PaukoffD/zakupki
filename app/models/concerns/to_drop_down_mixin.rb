module ToDropDownMixin

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def to_dropdown
      order(:name).map(&:to_option)
    end
  end

  def to_option
    [name, id]
  end
end
