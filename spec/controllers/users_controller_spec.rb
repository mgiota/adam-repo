require 'rails_helper'

describe UsersController, type: :controller do
    let(:user){User.create!(email: "test@gmail.com", password: "password")}
    let(:user_2){User.create!(email: "test@hotmail.com", password: "password2")}

    describe "Get #show" do
        context "when a user is logged in" do

            before do
                sign_in user
            end

            it 'loads correct user details' do
                get :show, params: {id: user.id}
                expect(response).to be_ok
                expect(assigns(:user)).to eq user
              end
        end

        it "tries accessing first users show page" do
            get :show, params: {id: user_2.id}
            expect(response).to have_http_status(302)
            expect(response).to redirect_to(root_path)
        end

        context 'when a user is not logged in' do
            it 'redirects to login' do
                get :show, params: {id: user.id}
                expect(response).to redirect_to(new_user_session_path)
            end
        end
    end

end