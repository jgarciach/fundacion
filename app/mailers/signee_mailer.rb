class SigneeMailer < ActionMailer::Base
  default from: "admin@escueladeemprededores.com"

  def welcome_email(signee)
    @signee = signee
    mail(to: signee.email, subject: "Bienvenido a la Escuela de Emprededores.")
  end
end
