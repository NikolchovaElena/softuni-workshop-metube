package metube.repository;

import metube.domain.entities.Tube;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import java.util.List;
import java.util.Optional;

public class TubeRepositoryImpl implements TubeRepository {
    private static final String FIND_BY_ID_QUERY = "SELECT t FROM tubes t WHERE t.id=:id";
    private static final String FIND_ALL_QUERY = "SELECT t FROM tubes t";

    private EntityManager entityManager;

    @Inject
    public TubeRepositoryImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Override
    public Tube save(Tube entity) {

        this.entityManager.getTransaction().begin();
        this.entityManager.persist(entity);
        this.entityManager.getTransaction().commit();

        return entity;
    }

    @Override
    public List<Tube> findAll() {

        return this.entityManager.createQuery(FIND_ALL_QUERY, Tube.class)
                .getResultList();
    }

    @Override
    public Tube findById(String id) {
        Tube tube = this.entityManager
                .createQuery(FIND_BY_ID_QUERY, Tube.class)
                .setParameter("id", id)
                .getSingleResult();

        return tube;
    }

    @Override
    public long size() {
        this.entityManager.getTransaction().begin();
        long size = this.entityManager
                .createQuery("SELECT count(t) FROM Tube t", long.class)
                .getSingleResult();
        this.entityManager.getTransaction().commit();

        return size;
    }

    @Override
    public Tube update(Tube tube) {
        this.entityManager.merge(tube);
        return tube;
    }
}
