class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing_page]
  
  def landing_page
  end

  def dashboard
  end

  def form_example_page
    @fake_user = FakeModel.new({
      field1: "f1",
      field2: true, # checkbox (ruby boolean)
      field3: "f3", # radio_button
      field4: "f4", # text_area
      field5: "f5", # hidden_field
      field6: "f6", # password_field
      field7: "f7", # number_field
      field8: "f8", # 
      field9: "f9", # 
      field10: Time.now, # 
      field11: Time.now, #
      field12: Time.now, # 
      field13: Time.now, # 
      field14: Time.now, # 
      field15: "f15", # 
      field16: "f16", # 
      field17: "f17", # 
      field18: "f18", # 
      field19: "#00FF00"  # 
    })
  end

  def fake_models_path(foo) # just for the fake model
    "/fake_messages"
  end

  helper_method :fake_models_path
end
