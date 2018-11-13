def create
  @page = Page.new(pages_params)

  if @page.save
    redirect_to pages_path
  else
    render :new
  end
end

def edit
  @page = Page.find(params[:id])
end

def update
  @page = Page.find(params[:id])

  if @page.update(page_params)
    redirect_to pages_path
  else
    render :edit
  end
end

def destroy
  Page.find(params[:id]).destroy
  redirect_to pages_path
end

private

   def pages_params
     params.require(:page).permit(:title, :author, :body)
   end