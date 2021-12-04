 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/authors", type: :request do

  # Author. As you add validations to Author, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    attributes_for(:author)
  }

  let(:invalid_attributes) {
    {
      name: '',
      email: ''
    }
  }

  before do
    sign_in create(:user)
  end

  describe "GET /index" do
    it "renders a successful response" do
      Author.create! valid_attributes
      get authors_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      author = Author.create! valid_attributes
      get author_url(author)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_author_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      author = Author.create! valid_attributes
      get edit_author_url(author)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Author" do
        expect {
          post authors_url, params: { author: valid_attributes }
        }.to change(Author, :count).by(1)
      end

      it "redirects to the created author" do
        post authors_url, params: { author: valid_attributes }
        expect(response).to redirect_to(author_url(Author.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Author" do
        expect {
          post authors_url, params: { author: invalid_attributes }
        }.to change(Author, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post authors_url, params: { author: invalid_attributes }
        expect(response).to render_template(:new)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        attributes_for(:author)
      }

      it "redirects to the author" do
        author = Author.create! valid_attributes
        patch author_url(author), params: { author: new_attributes }
        author.reload
        expect(response).to redirect_to(author_url(author))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        author = Author.create! valid_attributes
        patch author_url(author), params: { author: invalid_attributes }
        expect(response).to render_template(:edit)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested author" do
      author = Author.create! valid_attributes
      expect {
        delete author_url(author)
      }.to change(Author, :count).by(-1)
    end

    it "redirects to the authors list" do
      author = Author.create! valid_attributes
      delete author_url(author)
      expect(response).to redirect_to(authors_url)
    end
  end
end
