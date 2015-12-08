module ApplicationHelper
  
  def collection_of(items, opts={})
    options = {
      :field => 'name',
      :order => 'name',
      :dir => 'ASC'
      }.merge(opts)
    if items.is_a? ActiveRecord::Associations::CollectionProxy
      return items.sort_by {|i| i.send(options[:order]) }.collect {|i| [i.send(options[:field]), i.id]}
    elsif items.is_a? Array
      return items.collect {|i| [i.name, i.id]}
    else
      object = items.to_s.singularize.classify.constantize
      if object.column_names.include?(options[:order])
      	order_options = "#{options[:order]} #{options[:dir].upcase}"
      	object.order(order_options).all.collect {|i| [i.send(options[:field]), i.id]}
      else
      	object.all.collect {|i| [i.send(options[:field]), i.id]}
      end
    end
  end
  
end
