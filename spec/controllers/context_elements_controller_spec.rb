require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ContextElementsController do

  # This should return the minimal set of attributes required to create a valid
  # Content. As you add validations to Content, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ContextElementsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all context_elements as @context_elements" do
      content = ContextElement.create! valid_attributes
      get :index, {}, valid_session
      assigns(:context_elements).should eq([content])
    end
  end

  describe "GET show" do
    it "assigns the requested content as @content" do
      content = ContextElement.create! valid_attributes
      get :show, {:id => content.to_param}, valid_session
      assigns(:context_element).should eq(content)
    end
  end

  describe "GET new" do
    it "assigns a new content as @content" do
      get :new, {}, valid_session
      assigns(:context_element).should be_a_new(ContextElement)
    end
  end

  describe "GET edit" do
    it "assigns the requested content as @content" do
      content = ContextElement.create! valid_attributes
      get :edit, {:id => content.to_param}, valid_session
      assigns(:context_element).should eq(content)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Content" do
        expect {
          post :create, {:context_element => valid_attributes}, valid_session
        }.to change(ContextElement, :count).by(1)
      end

      it "assigns a newly created content as @content" do
        post :create, {:context_element => valid_attributes}, valid_session
        assigns(:context_element).should be_a(ContextElement)
        assigns(:context_element).should be_persisted
      end

      it "redirects to the created content" do
        post :create, {:context_element => valid_attributes}, valid_session
        response.should redirect_to(ContextElement.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved content as @content" do
        # Trigger the behavior that occurs when invalid params are submitted
        ContextElement.any_instance.stub(:save).and_return(false)
        post :create, {:context_element => {}}, valid_session
        assigns(:context_element).should be_a_new(ContextElement)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ContextElement.any_instance.stub(:save).and_return(false)
        post :create, {:context_element => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested content" do
        content = ContextElement.create! valid_attributes
        # Assuming there are no other context_elements in the database, this
        # specifies that the Content created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ContextElement.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => content.to_param, :context_element => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested content as @content" do
        content = ContextElement.create! valid_attributes
        put :update, {:id => content.to_param, :context_element => valid_attributes}, valid_session
        assigns(:context_element).should eq(content)
      end

      it "redirects to the content" do
        content = ContextElement.create! valid_attributes
        put :update, {:id => content.to_param, :context_element => valid_attributes}, valid_session
        response.should redirect_to(content)
      end
    end

    describe "with invalid params" do
      it "assigns the content as @content" do
        content = ContextElement.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ContextElement.any_instance.stub(:save).and_return(false)
        put :update, {:id => content.to_param, :context_element => {}}, valid_session
        assigns(:context_element).should eq(content)
      end

      it "re-renders the 'edit' template" do
        content = ContextElement.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ContextElement.any_instance.stub(:save).and_return(false)
        put :update, {:id => content.to_param, :context_element => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested content" do
      content = ContextElement.create! valid_attributes
      expect {
        delete :destroy, {:id => content.to_param}, valid_session
      }.to change(ContextElement, :count).by(-1)
    end

    it "redirects to the context_elements list" do
      content = ContextElement.create! valid_attributes
      delete :destroy, {:id => content.to_param}, valid_session
      response.should redirect_to(contents_url)
    end
  end

end