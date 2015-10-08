class SurveyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.survey_mailer.survey_time.subject
  #
  def survey_time(contact)
    @contact = Contact.last
    @greeting = "Hi"
  

    mail to: "singhjaskar@gmail.com", subject: "100 day post-graduation survey"
  end
end
