require 'rails_helper'

RSpec.describe TasksController, type: :controller do

    context 'GET #index' do
        it 'returns a success response' do
            get :index
            expect(response).to be_success
        end
    end

    describe "POST #create" do
        context "with valid params" do
            let (:valid_attributes) {{ name: "My task" }}
            before { post :create, params: { task: valid_attributes } }
            
            it "creates a new Task" do
                expect(response).to have_http_status(302)
            end
        end
    end

    describe "PATCH update" do
        context "on successfull update" do
            let(:task) { Task.create name: "this is my task" }
            let(:update_attrib) { {  } }
            before { patch :update, params: { id: task.id, task: update_attrib } }

            it "returns with a http status :302" do
                expect(Task.completed_tasks.size).to eq(1)
                expect(response).to have_http_status(:redirect)
                expect(response).to have_http_status(302)
            end

            it "should update the status of task" do
                expect(Task.completed_tasks.size).to eq(1)
            end
        end
    end

    describe "DELETE destroy" do 
        let(:task) { Task.create name: "this is my task" }
		before { delete :destroy, params: { id: task } }

		it "should redirect to index page" do
			expect(response).to redirect_to root_path
        end
        
		it "should redirect to index page" do
			expect(Task.all.count).to eq(0)
		end

	end


end
