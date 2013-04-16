atom_feed do |feed|
  feed.title("The latest events")
  feed.updated(@events.first.created_at)
  @events.each do |event|
    feed.entry(event) do |entry|
      entry.author do |author|
        author.name "Adam Hyland"
       # author.name event.author.username
      end
      entry.title(event.title)
      entry.content(event.body, :type => 'html')

    end
  end
end