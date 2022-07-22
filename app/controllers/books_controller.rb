class BooksController < ApplicationController
    protect_from_forgery expect:[:destroy]   
    before_action :set_book, only:[:show, :destroy, :edit]
    around_action :action_logger, only:[:destroy]
    
    def show
        respond_to do |format|
            format.html
            format.json{render json:@book}
        end
    end

    def destroy
        @book.destroy
        respond_to do |format|
            format.html{ redirect_to"/"}
            format.json{head:no_content}
        end
    end
    
    def index
        @books = Book.all
    end

    def edit
    end
    def new
    end



    private

    def set_book
        @book = Book.find_by(params[:id])
    end

    def action_logger
        logger.info "around-before"
        yield
        logger.info "around-after"
    end
end
