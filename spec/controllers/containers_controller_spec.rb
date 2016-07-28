# frozen_string_literal: true
require 'rails_helper'

RSpec.describe ContainersController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Container. As you add validations to Container, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ContainersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'assigns all containers as @containers' do
      container = Container.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:containers)).to eq([container])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested container as @container' do
      container = Container.create! valid_attributes
      get :show, { id: container.to_param }, valid_session
      expect(assigns(:container)).to eq(container)
    end
  end

  describe 'GET #new' do
    it 'assigns a new container as @container' do
      get :new, {}, valid_session
      expect(assigns(:container)).to be_a_new(Container)
    end
  end

  describe 'GET #edit' do
    it 'assigns the requested container as @container' do
      container = Container.create! valid_attributes
      get :edit, { id: container.to_param }, valid_session
      expect(assigns(:container)).to eq(container)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Container' do
        expect do
          post :create, { container: valid_attributes }, valid_session
        end.to change(Container, :count).by(1)
      end

      it 'assigns a newly created container as @container' do
        post :create, { container: valid_attributes }, valid_session
        expect(assigns(:container)).to be_a(Container)
        expect(assigns(:container)).to be_persisted
      end

      it 'redirects to the created container' do
        post :create, { container: valid_attributes }, valid_session
        expect(response).to redirect_to(Container.last)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved container as @container' do
        post :create, { container: invalid_attributes }, valid_session
        expect(assigns(:container)).to be_a_new(Container)
      end

      it "re-renders the 'new' template" do
        post :create, { container: invalid_attributes }, valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested container' do
        container = Container.create! valid_attributes
        put :update, { id: container.to_param, container: new_attributes }, valid_session
        container.reload
        skip('Add assertions for updated state')
      end

      it 'assigns the requested container as @container' do
        container = Container.create! valid_attributes
        put :update, { id: container.to_param, container: valid_attributes }, valid_session
        expect(assigns(:container)).to eq(container)
      end

      it 'redirects to the container' do
        container = Container.create! valid_attributes
        put :update, { id: container.to_param, container: valid_attributes }, valid_session
        expect(response).to redirect_to(container)
      end
    end

    context 'with invalid params' do
      it 'assigns the container as @container' do
        container = Container.create! valid_attributes
        put :update, { id: container.to_param, container: invalid_attributes }, valid_session
        expect(assigns(:container)).to eq(container)
      end

      it "re-renders the 'edit' template" do
        container = Container.create! valid_attributes
        put :update, { id: container.to_param, container: invalid_attributes }, valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested container' do
      container = Container.create! valid_attributes
      expect do
        delete :destroy, { id: container.to_param }, valid_session
      end.to change(Container, :count).by(-1)
    end

    it 'redirects to the containers list' do
      container = Container.create! valid_attributes
      delete :destroy, { id: container.to_param }, valid_session
      expect(response).to redirect_to(containers_url)
    end
  end
end
