class SurveyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.survey_mailer.survey_time.subject
  #
  def survey_time(contac)
    @contac = Contact.last
    @greeting = "Hi"

    mail to: "singhjaskar@yahoo.com", subject: "100 day post-graduation survey"
  end
end
