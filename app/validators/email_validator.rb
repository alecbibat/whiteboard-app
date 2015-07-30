class EmailValidator < ActiveModel::Validator
  def validate(record)
    unless record.email.ends_with? '@colorado.edu'
      record.errors[:email] << "must be @colorado.edu"
    end
  end
end