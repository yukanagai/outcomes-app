class SurveyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.survey_mailer.survey_time.subject
  #
  def survey_time(contact)
    @contact = contact
    @greeting = "Hi"

    mail to: "singhjaskar@yahoo.com", subject: "testing action mailer"
  end
end
