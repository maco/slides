Repo.all(
  from p in Post,
    left_join: t1 in assoc(p, :taxonomy1 ),
    left_join: t2 in assoc(p, :taxonomy2 ),
    left_join: t3 in assoc(p :taxonomy3 ),
    left_join: t4 in assoc(p :taxonomy4 ),
    left_join: a1 in assoc(t1, :aggregators ),
    left_join: a2 in assoc(t2, :aggregators ),
    left_join: a3 in assoc(t3, :aggregators ),
    left_join: a4 in assoc(t4, :aggregators ),
    where:
      a1.id == ^id or
        a2.id == ^id or
        a3.id == ^id or
        a4.id == ^id
)
