package bookmystay.model.dao.jpa;

import bookmystay.model.Room;
import bookmystay.model.dao.RoomDao;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;


@Repository

public class RoomDAOImpl implements RoomDao {
    @PersistenceContext
    private EntityManager manager;




    @Transactional
    @Override
    public void addRoom(Room room) {
        manager.merge(room);
    }

    @Override
    public List<Room> getAllRoom() {
        List<Room> rooms= manager.createQuery("Select a From Room a", Room.class).getResultList();
        return rooms;
    }

    public Room getRoomById(int id) {
        // TODO Auto-generated method stub

        Room room=manager.find(Room.class,id);
        System.out.println("find room"+room.getRoomNo());
        return room;
    }








    @Transactional
    @Override
    public Room update(Room room) {

        manager.merge(room);

        return room;

    }


//    @Override
//    @Transactional
//    public Shop create(Shop shop) {
//        Shop createdShop = shop;
//        return shopRepository.save(createdShop);
//    }
//
//    @Override
//    @Transactional
//    public Shop findById(int id) {
//        return shopRepository.findOne(id);
//    }
//
//    @Override
//    @Transactional(rollbackFor=ShopNotFound.class)
//    public Shop delete(int id) throws ShopNotFound {
//        Shop deletedShop = shopRepository.findOne(id);
//
//        if (deletedShop == null)
//            throw new ShopNotFound();
//
//        shopRepository.delete(deletedShop);
//        return deletedShop;
//    }
//
//    @Override
//    @Transactional
//    public List<Shop> findAll() {
//        return shopRepository.findAll();
//    }
//
//    @Override
//    @Transactional(rollbackFor=ShopNotFound.class)
//    public Shop update(Shop shop) throws ShopNotFound {
//        Shop updatedShop = shopRepository.findOne(shop.getId());
//
//        if (updatedShop == null)
//            throw new ShopNotFound();
//
//        updatedShop.setName(shop.getName());
//        updatedShop.setEmplNumber(shop.getEmplNumber());
//        return updatedShop;
//    }
//
//}
//











}
