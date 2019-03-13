class SushisController < ApplicationController

  # GET: /sushis
  get "/sushis" do
    @sushis = Sushi.all
    erb :"/sushis/index"
  end

  # GET: /sushis/new
  get "/sushis/new" do
    erb :"/sushis/new"
  end

  # POST: /sushis
  post "/sushis" do
    Sushi.create(params[:sushi])
    redirect "/sushis"
  end

  # GET: /sushis/5
  get "/sushis/:id" do
    @sushi = Sushi.find_by(id: params[:id])
    erb :"/sushis/show"
  end

  # GET: /sushis/5/edit
  get "/sushis/:id/edit" do
    @sushi = Sushi.find_by(id: params[:id])
    erb :"/sushis/edit"
  end

  # PATCH: /sushis/5
  patch "/sushis/:id" do
    @sushi = Sushi.find_by(id: params[:id])
    @sushi.update(params[:sushi])
    redirect "/sushis/#{@sushi.id}"
  end

  # DELETE: /sushis/5
  delete "/sushis/:id" do
    @sushi = Sushi.find_by(id: params[:id])
    @sushi.destroy
    redirect "/sushis"
  end
end
