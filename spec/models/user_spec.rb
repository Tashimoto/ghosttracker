require 'rails_helper'

  RSpec.describe User, :type => :model do
    context "email" do  

      it "must be present" do
        expect(FactoryGirl.build(:null_email).save).to be false
      end

      it "must be unique in the system" do
          #create a valid user and save in the database
          valid_user = FactoryGirl.create :valid_user

          #attempt to create another user with the same email
          #in this case save should reutrn false as this is a duplicate email
          expect(FactoryGirl.build(:valid_user).save).to be false
      end

      it "must be in a valid format" do
          
          expect(FactoryGirl.build(:email_format).save).to be true
      end

      it "must have between 5 and 50 characters" do
          
          expect(FactoryGirl.build(:email_limit_50).save).to be false
      end



    end

    context "password" do  

      it "must be present" do
        expect(FactoryGirl.build(:user_no_password).save).to be false
      end

      it "must have at least 6 characters" do
        expect(FactoryGirl.build(:password_6_characters).save).to be true
      end

      it "must have between 5 and 50 characters" do
          
        expect(FactoryGirl.build(:password_limit_50).save).to be false
      end
    end
  end

