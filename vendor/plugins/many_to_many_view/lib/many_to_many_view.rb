module ManyToManyView

  include ActionView::Helpers::TextHelper
  
	def m2m 
	#get params
	thing_model = params[:thing_model]
	thing_id = params[:thing_id]
	association = params[:association]
	association_attr = params[:association_attr]
	association_id = params[:association_id]
	add_or_remove = params[:add_or_remove]
	
	association_model = association.camelize.singularize.constantize
	
	# data to return to partial partial
	association_method =  association
	thing = thing_model.camelize.constantize.find( thing_id )
	association_objects = thing.send(  association_method )
	
	if add_or_remove=='add' 
	  #add association object  to thing
	  thing.send( association_method ) << association_model.find( association_id )
    elsif add_or_remove=='remove' 
	  #remove association object  to thing
	  assoc_to_remove = association_model.find( association_id.to_i )
	  thing.send( association_method ).delete(  assoc_to_remove  )
    end 
	
	render :partial => "shared/m2m" ,  :locals => { 
	  :thing => thing, 
	  :thing_model => thing_model, 
	  :association => association_method,
	  :association_model => association_model,
	  :association_objects => association_objects,
	  :association_attr => association_attr 
	}  
  end
	
end
