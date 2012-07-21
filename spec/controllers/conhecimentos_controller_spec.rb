require 'spec_helper'


describe ConhecimentosController do

  before {login}
  let ( :conhecimento ) { mock ("conhecimento") }
  
  describe "GET index" do
    it "assigns all conhecimentos as @conhecimentos" do
    
      Conhecimento.stub(:all).and_return ([conhecimento])
      
      get :index
      assigns(:conhecimentos).should eq([conhecimento])
    end
  end

  describe "GET show" do
    it "assigns the requested conhecimento as @conhecimento" do
    
      Conhecimento.stub(:find).with("1").and_return(conhecimento)
      get :show , :id => 1
      
      assigns(:conhecimento).should eq(conhecimento)
    end
  end
   
   describe "GET new" do
     xit "assigns a new conhecimento as @conhecimento" do
    
       get :new, {}, valid_session
       assigns(:conhecimento).should be_a_new(Conhecimento)
     end
   end
   
  # describe "GET edit" do
  #   it "assigns the requested conhecimento as @conhecimento" do
  #     conhecimento = Conhecimento.create! valid_attributes
  #     get :edit, {:id => conhecimento.to_param}, valid_session
  #     assigns(:conhecimento).should eq(conhecimento)
  #   end
  # end
  # 
  # describe "POST create" do
  #   describe "with valid params" do
  #     it "creates a new Conhecimento" do
  #       expect {
  #         post :create, {:conhecimento => valid_attributes}, valid_session
  #       }.to change(Conhecimento, :count).by(1)
  #     end
  # 
  #     it "assigns a newly created conhecimento as @conhecimento" do
  #       post :create, {:conhecimento => valid_attributes}, valid_session
  #       assigns(:conhecimento).should be_a(Conhecimento)
  #       assigns(:conhecimento).should be_persisted
  #     end
  # 
  #     it "redirects to the created conhecimento" do
  #       post :create, {:conhecimento => valid_attributes}, valid_session
  #       response.should redirect_to(Conhecimento.last)
  #     end
  #   end
  # 
  #   describe "with invalid params" do
  #     it "assigns a newly created but unsaved conhecimento as @conhecimento" do
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Conhecimento.any_instance.stub(:save).and_return(false)
  #       post :create, {:conhecimento => {}}, valid_session
  #       assigns(:conhecimento).should be_a_new(Conhecimento)
  #     end
  # 
  #     it "re-renders the 'new' template" do
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Conhecimento.any_instance.stub(:save).and_return(false)
  #       post :create, {:conhecimento => {}}, valid_session
  #       response.should render_template("new")
  #     end
  #   end
  # end
  # 
  # describe "PUT update" do
  #   describe "with valid params" do
  #     it "updates the requested conhecimento" do
  #       conhecimento = Conhecimento.create! valid_attributes
  #       # Assuming there are no other conhecimentos in the database, this
  #       # specifies that the Conhecimento created on the previous line
  #       # receives the :update_attributes message with whatever params are
  #       # submitted in the request.
  #       Conhecimento.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
  #       put :update, {:id => conhecimento.to_param, :conhecimento => {'these' => 'params'}}, valid_session
  #     end
  # 
  #     it "assigns the requested conhecimento as @conhecimento" do
  #       conhecimento = Conhecimento.create! valid_attributes
  #       put :update, {:id => conhecimento.to_param, :conhecimento => valid_attributes}, valid_session
  #       assigns(:conhecimento).should eq(conhecimento)
  #     end
  # 
  #     it "redirects to the conhecimento" do
  #       conhecimento = Conhecimento.create! valid_attributes
  #       put :update, {:id => conhecimento.to_param, :conhecimento => valid_attributes}, valid_session
  #       response.should redirect_to(conhecimento)
  #     end
  #   end
  # 
  #   describe "with invalid params" do
  #     it "assigns the conhecimento as @conhecimento" do
  #       conhecimento = Conhecimento.create! valid_attributes
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Conhecimento.any_instance.stub(:save).and_return(false)
  #       put :update, {:id => conhecimento.to_param, :conhecimento => {}}, valid_session
  #       assigns(:conhecimento).should eq(conhecimento)
  #     end
  # 
  #     it "re-renders the 'edit' template" do
  #       conhecimento = Conhecimento.create! valid_attributes
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Conhecimento.any_instance.stub(:save).and_return(false)
  #       put :update, {:id => conhecimento.to_param, :conhecimento => {}}, valid_session
  #       response.should render_template("edit")
  #     end
  #   end
  # end
  # 
  # describe "DELETE destroy" do
  #   it "destroys the requested conhecimento" do
  #     conhecimento = Conhecimento.create! valid_attributes
  #     expect {
  #       delete :destroy, {:id => conhecimento.to_param}, valid_session
  #     }.to change(Conhecimento, :count).by(-1)
  #   end
  # 
  #   it "redirects to the conhecimentos list" do
  #     conhecimento = Conhecimento.create! valid_attributes
  #     delete :destroy, {:id => conhecimento.to_param}, valid_session
  #     response.should redirect_to(conhecimentos_url)
  #   end
  # end

end
