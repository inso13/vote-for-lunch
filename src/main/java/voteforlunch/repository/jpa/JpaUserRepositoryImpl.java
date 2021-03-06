package voteforlunch.repository.jpa;

import org.springframework.dao.support.DataAccessUtils;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import voteforlunch.model.User;
import voteforlunch.repository.UserRepository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * User: gkislin
 * Date: 29.08.2014
 */
@Repository
@Transactional(readOnly = true)
public class JpaUserRepositoryImpl implements UserRepository {

/*
    @Autowired
    private SessionFactory sessionFactory;

    private Session openSession() {
        return sessionFactory.getCurrentSession();
    }
*/

    @PersistenceContext
    private EntityManager em;

    @Override
    @Transactional
    public User save(User user) {
        if (user.isNew()) {
            em.persist(user);
            return user;
        } else {
            return em.merge(user);
        }
    }

    @Override
    public User get(int id) {
        List<User> users = em.createNamedQuery(User.GET, User.class).setParameter("id", id).getResultList();
        if (users.size() == 0) return null;
        else return DataAccessUtils.singleResult(users);
    }

    @Override
    @Transactional
    public boolean delete(int id) {

/*      User ref = em.getReference(User.class, getId);
        em.remove(ref);

        Query<User> query = em.createQuery("DELETE FROM User u WHERE u.getId=:getId");
        return query.setParameter("getId", getId).executeUpdate() != 0;
*/
        return em.createNamedQuery(User.DELETE).setParameter("id", id).executeUpdate() != 0;
    }

    @Override
    public User getByEmail(String email) {
        List<User> users = em.createNamedQuery(User.BY_EMAIL, User.class).setParameter(1, email).getResultList();
        return DataAccessUtils.singleResult(users);
    }

    @Override
    public List<User> getAll() {
        return em.createNamedQuery(User.ALL_SORTED, User.class).getResultList();
    }
}
