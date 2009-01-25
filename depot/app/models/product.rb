class Product < ActiveRecord::Base
	validates_presence_of :title, :description, :img_url
	validates_numericality_of :price
	validates_uniqueness_of :title
	validates_format_of :img_url,
						:with 	=> %r{\.(gif|jpg|png)$}i,
						:message => 'must be a URL for GIF, JPG or PNG image. (gif|jpg|png)'
	
	validate :price_must_be_atleast_a_cent
	
	protected
	def price_must_be_atleast_a_cent
		errors.add(:price, 'should be atleast 0.01') if price.nil? || price < 0.01
	end
end
