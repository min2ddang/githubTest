package spring.jpa.web.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import spring.jpa.web.entity.BoardFileEntity;

@Repository
public interface BoardFileRepository extends JpaRepository<BoardFileEntity, Integer> {

}
