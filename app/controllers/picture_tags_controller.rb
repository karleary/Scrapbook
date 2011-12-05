class PictureTagsController < ApplicationController
  # GET /picture_tags
  # GET /picture_tags.json
  def index
    @picture_tags = PictureTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @picture_tags }
    end
  end

  # GET /picture_tags/1
  # GET /picture_tags/1.json
  def show
    @picture_tag = PictureTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @picture_tag }
    end
  end

  # GET /picture_tags/new
  # GET /picture_tags/new.json
  def new
    @picture_tag = PictureTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @picture_tag }
    end
  end

  # GET /picture_tags/1/edit
  def edit
    @picture_tag = PictureTag.find(params[:id])
  end

  # POST /picture_tags
  # POST /picture_tags.json
  def create
    @picture_tag = PictureTag.new(params[:picture_tag])

    respond_to do |format|
      if @picture_tag.save
        format.html { redirect_to @picture_tag, notice: 'Picture tag was successfully created.' }
        format.json { render json: @picture_tag, status: :created, location: @picture_tag }
      else
        format.html { render action: "new" }
        format.json { render json: @picture_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /picture_tags/1
  # PUT /picture_tags/1.json
  def update
    @picture_tag = PictureTag.find(params[:id])

    respond_to do |format|
      if @picture_tag.update_attributes(params[:picture_tag])
        format.html { redirect_to @picture_tag, notice: 'Picture tag was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @picture_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picture_tags/1
  # DELETE /picture_tags/1.json
  def destroy
    @picture_tag = PictureTag.find(params[:id])
    @picture_tag.destroy

    respond_to do |format|
      format.html { redirect_to picture_tags_url }
      format.json { head :ok }
    end
  end
end
