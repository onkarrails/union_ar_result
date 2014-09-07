require "union_ar_result/version"

module UnionArResult
  def self.included(base)
    base.send :extend, ClassMethods
  end

  module ClassMethods
    def union_querries(*queries)
      model_id = "{self.class.to_underscore.pluralize}"+".id"
      sub_query = queries.map { |s| s.select(id_column).to_sql }.join(" UNION ")
      where "#{model_id} IN (#{sub_query})"
    end
  end
end

class ActiveRecord::base
  include UnionArResult
end
