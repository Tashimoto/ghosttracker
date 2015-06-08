class GuestPagesController < ApplicationController
  def home
    @ghosts = Ghost.untargeted
  end
end
