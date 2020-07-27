module GifsHelper
def linked_tag_list(gif)
    list = gif.tag_list.map do |tag_name|
    link_to tag_name, random_gif_path(tag: tag_name)
end
safe_join list, ", "
end

def full_gif_url(gif)
    gif.image_url(host: request.protocol + request.host_with_port)
end


end
