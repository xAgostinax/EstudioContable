class Message

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :subject, :body
  
  validates :name, :presence => {:message => "* Debe ingresar un nombre"}
  #validates :email, :presence => {:message => "*Debe ingresar un email"}
  validates :body, :presence => {:message => "* Debe escribir su consulta"}

  #instale gem 'validates_email_format_of' #
  validates :email, email_format: { message: "* Ingrese su email correctamente" }
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end
