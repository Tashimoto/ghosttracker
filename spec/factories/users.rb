
FactoryGirl.define do

##GENERAL

  factory :valid_user, class: User do

    email "test@test.com"
    password "password"

  end


    factory :null_email, class: User do

    email nil
    password "password"

  end


  factory :email_format, class: User do

    email "somebody23@somedomain.com"
    password "password"
    password_confirmation "password"

  end

  factory :email_limit_50, class: User do

    email "a" * 25 + "@" + "a" * 25  + "." + "c" * 25
    password "password"

  end


    factory :user_no_password, class: User do

    email "test@test.com"
    password ""

  end


    factory :password_6_characters, class: User do

    email "test@test.com"
    password "password"

  end

    factory :password_limit_50, class: User do

    email "test@test.com"
    password "a" * 51

  end
end