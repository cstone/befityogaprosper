ActiveAdmin.register DynamicContent do


  index do
    selectable_column
    column :title
    column :key
    column :value do |content|
      simple_format content.value.truncate(150)
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :key
      f.input :value, :as => :ckeditor, :input_html => { :ckeditor => { :height => 400 } }
    end
    f.actions
  end


  show do |content|
    attributes_table do
      row :title
      row :key
      row :value do
        content.value.html_safe
      end
    end
    active_admin_comments
  end
  
end
