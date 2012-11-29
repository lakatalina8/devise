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

describe NewItems do

  # This should return the minimal set of attributes required to create a valid
  # Datum. As you add validations to Datum, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # NewItems. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all new_items as @new_items" do
      datum = Datum.create! valid_attributes
      get :index, {}, valid_session
      assigns(:new_items).should eq([datum])
    end
  end

  describe "GET show" do
    it "assigns the requested datum as @datum" do
      datum = Datum.create! valid_attributes
      get :show, {:id => datum.to_param}, valid_session
      assigns(:new_item).should eq(datum)
    end
  end

  describe "GET new" do
    it "assigns a new datum as @datum" do
      get :new, {}, valid_session
      assigns(:new_item).should be_a_new(Datum)
    end
  end

  describe "GET edit" do
    it "assigns the requested datum as @datum" do
      datum = Datum.create! valid_attributes
      get :edit, {:id => datum.to_param}, valid_session
      assigns(:new_item).should eq(datum)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Datum" do
        expect {
          post :create, {:new_item => valid_attributes}, valid_session
        }.to change(Datum, :count).by(1)
      end

      it "assigns a newly created datum as @datum" do
        post :create, {:new_item => valid_attributes}, valid_session
        assigns(:new_item).should be_a(Datum)
        assigns(:new_item).should be_persisted
      end

      it "redirects to the created datum" do
        post :create, {:new_item => valid_attributes}, valid_session
        response.should redirect_to(Datum.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved datum as @datum" do
        # Trigger the behavior that occurs when invalid params are submitted
        Datum.any_instance.stub(:save).and_return(false)
        post :create, {:new_item => {}}, valid_session
        assigns(:new_item).should be_a_new(Datum)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Datum.any_instance.stub(:save).and_return(false)
        post :create, {:new_item => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested datum" do
        datum = Datum.create! valid_attributes
        # Assuming there are no other new_items in the database, this
        # specifies that the Datum created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Datum.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => datum.to_param, :new_item => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested datum as @datum" do
        datum = Datum.create! valid_attributes
        put :update, {:id => datum.to_param, :new_item => valid_attributes}, valid_session
        assigns(:new_item).should eq(datum)
      end

      it "redirects to the datum" do
        datum = Datum.create! valid_attributes
        put :update, {:id => datum.to_param, :new_item => valid_attributes}, valid_session
        response.should redirect_to(datum)
      end
    end

    describe "with invalid params" do
      it "assigns the datum as @datum" do
        datum = Datum.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Datum.any_instance.stub(:save).and_return(false)
        put :update, {:id => datum.to_param, :new_item => {}}, valid_session
        assigns(:new_item).should eq(datum)
      end

      it "re-renders the 'edit' template" do
        datum = Datum.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Datum.any_instance.stub(:save).and_return(false)
        put :update, {:id => datum.to_param, :new_item => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested datum" do
      datum = Datum.create! valid_attributes
      expect {
        delete :destroy, {:id => datum.to_param}, valid_session
      }.to change(Datum, :count).by(-1)
    end

    it "redirects to the new_items list" do
      datum = Datum.create! valid_attributes
      delete :destroy, {:id => datum.to_param}, valid_session
      response.should redirect_to(data_url)
    end
  end

end
