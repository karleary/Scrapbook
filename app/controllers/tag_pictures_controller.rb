class TagPicturesController < ApplicationController
  # GET /tag_pictures
  # GET /tag_pictures.json
  def index
    @tag_pictures = TagPicture.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tag_pictures }
    end
  end

  # GET /tag_pictures/1
  # GET /tag_pictures/1.json
  def show
    @tag_picture = TagPicture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tag_picture }
    end
  end

  # GET /tag_pictures/new
  # GET /tag_pictures/new.json
  def new
    @tag_picture = TagPicture.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tag_picture }
    end
  end

  # GET /tag_pictures/1/edit
  def edit
    @tag_picture = TagPicture.find(params[:id])
  end

  # POST /tag_pictures
  # POST /tag_pictures.json
  def create
    @tag_picture = TagPicture.new(params[:tag_picture])

    respond_to do |format|
      if @tag_picture.save
        format.html { redirect_to @tag_picture, notice: 'Tag picture was successfully created.' }
        format.json { render json: @tag_picture, status: :created, location: @tag_picture }
      else
        format.html { render action: "new" }
        format.json { render json: @tag_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tag_pictures/1
  # PUT /tag_pictures/1.json
  def update
    @tag_picture = TagPicture.find(params[:id])

    respond_to do |format|
      if @tag_picture.update_attributes(params[:tag_picture])
        format.html { redirect_to @tag_picture, notice: 'Tag picture was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tag_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_pictures/1
  # DELETE /tag_pictures/1.json
  def destroy
    @tag_picture = TagPicture.find(params[:id])
    @tag_picture.destroy

    respond_to do |format|
      format.html { redirect_to tag_pictures_url }
      format.json { head :ok }
    end
  end
end
