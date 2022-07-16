class BooksController < ApplicationController
    protect_form_forgery expect:[:destroy]   
    before_action :set_book,only[:show, :destroy]
    around_action :action_logger,only:[:destroy]
    
    def show
        respond_to do |format|
            fomat.html
            format.json
        end
    end

    def destroy
        @book.destroy
        respond_to do |format|
            format.html{ redirect_to"/"}
            format.json{head:no_content}
        end
    end

    private

    def set_book
        @book = Book.find_by(id:params)
    end

    def action_logger
        logger.info "around-before"
        yield
        logger.info "around-after"
    end
end
