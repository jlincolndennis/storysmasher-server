class UserController < ApplicationController

 def show
   @users = Users.find(params:[:id])
 end

 def new
 end

 def create
 end

 def edit
 end

 def update
 end

 def delete
 end
end
