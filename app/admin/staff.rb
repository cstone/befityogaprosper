ActiveAdmin.register Staff do

  index do
    selectable_column
    column :photo do |staff|
      if staff.photo.url
        image_tag staff.photo.url(:thumb)
      end
    end
    column :first_name
    column :last_name
    column :title
    column :bio
    column :order
    column :active
    actions
  end


  form do |f|
    f.inputs do
      f.input :first_name, label: 'First Name'
      f.input :last_name, label: 'Last Name'
      f.input :title
      f.input :order
      f.input :bio, :as => :ckeditor, :input_html => { :ckeditor => { :height => 400 } }
      f.input :photo, :as => :file, :hint => f.object.photo.present? \
    ? f.template.image_tag(f.object.photo.url(:thumb))
      : f.template.content_tag(:span, "You haven't uploaded a photo.")
      f.input :photo_cache, :as => :hidden
      f.input :remove_photo, as: :boolean, label: 'Check here and click update to remove the current image.'
    end
    f.actions
  end


  show do |staff|
    attributes_table do
      row :id
      row :first_name
      row :last_name
      row :title
      row :order
      row :bio do
        staff.bio.html_safe
      end
      row :photo do
        if staff.photo.url
          image_tag staff.photo.url
        end
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

end
