Repo.all(
  from p in Post,
    left_join: t1 in assoc(p, :taxonomy1 ),
    left_join: a1 in assoc(t1, :aggregators ),
    where:
      a1.id == ^id
)
