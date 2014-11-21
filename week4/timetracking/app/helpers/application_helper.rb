module ApplicationHelper


	def flash_message
		if flash[:error]
		   show_flash(flash[:error], 'error')
		elsif flash[:notice]
		   show_flash(flash[:notice], 'notice')
		end
	end

	def previous_page?
		#params[:page].present? && params[:page].to_i > 1
		#return false if params[:page].nil?
		#params[:page].to_i > 1
		if params[:page].blank? || params[:page].to_i == 1
			return false
		else
			true
		end
	end

	def previous_page
		previous_page = params[:page].to_i - 1
		if previous_page == 0
			return 1
		else
			previous_page
		end
	end

	def next_page?
		current_page = params[:page].to_i
		total = @projects.except(:limit).except(:offset).count
		total_pages = (total.to_f/Project::PER_PAGE).ceil

		current_page < total_pages
	end

	def next_page
		params[:page].to_i + 1
	end

	private

	def show_flash(message, css_class)
		content_tag :div, class: "message #{css_class}" do 
			content_tag :p do
				message
				#flash[type]
			end
		end
	end
end
