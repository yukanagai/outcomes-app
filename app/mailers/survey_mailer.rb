class SurveyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.survey_mailer.survey_time.subject
  #
  def survey_time(contact, student)
    @admin = contact
    binding.pry
    @greeting = "Hi"
    @studentEmail = student.contact.email
    @studentName = student.name
    mail to: @studentEmail, subject: "100 day post-graduation survey"
  end
end
