class Message

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :subject, :body

  validates :name, :presence => {:message => " Por favor, ingrese su nombre "}
  validates :body, :presence => {:message => " Por favor, ingrese su consulta"}
  validates :email, email_format: { message: " Ingrese su email correctamente" }
  #binding.pry
  validates_length_of :name, {:minimum => 3, message: " Como minimo 3 caracteres."}
  validates_length_of :body, {:minimum => 10, message: " Como minimo 10 caracteres." }
  #instale gem 'validates_email_format_of' #
  
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end
