RailsAdmin.config do |config|

  config.main_app_name = [""]

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
      except [Admin, SiteVar]
    end
    export do
      except [Admin, SiteVar]
    end
    bulk_delete do
      except [Admin, SiteVar]
    end
    show
    edit do
      except [Admin]
    end
    delete do
      except [Admin, SiteVar]
    end
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  config.model Page do
    field :name
    field :code, :ck_editor
    field :created_at
    field :updated_at
  end
  config.model SiteVar do
    field :title
    field :header, :ck_editor
    field :footer, :ck_editor
  end
end
