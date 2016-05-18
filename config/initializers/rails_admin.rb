RailsAdmin.config do |config|

  config.main_app_name = ["EventFinder", "BackOffice"]
  config.authorize_with do
    redirect_to main_app.root_path unless (current_usuario and current_usuario.admin)
 
  
end
  ### Popular gems integration
# configure :datainicio, :date do
#   date_format :default
# end
#   configure :datafim, :date do
#   date_format :default
# end
  # config.model 'Evento' do
  #   edit do
  #     field :datainicio do
  #       date_format :default
  #     end
  #     field :datafim do
  #     date_format :default   
  #     end
  #   end
  # end
  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
