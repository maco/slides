Task.async_stream(
  taxonomies,
  fn taxonomy ->
    query_stories(id, taxonomy)
  end,
  timeout: 30_000
)
|> Enum.flat_map(fn
  {:ok, posts} -> posts
  _ -> []
end)
