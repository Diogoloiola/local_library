module Admins
  module V1
    class ApiController < ApplicationController
      before_action :authenticate_admin!
    end
  end
end
