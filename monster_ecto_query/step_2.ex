defp query_articles(id, taxonomy) do
  Repo.all(
    from p in Post,
      left_join: t in assoc(p, ^taxonomy),
      left_join: a in assoc(t, :aggregators ),
      where: a.id == ^id
  )
end
