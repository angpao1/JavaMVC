package service;

import model.Books;

import java.util.ArrayList;
import java.util.List;

public class ServicePromotion {
    public static List<Books> discount(List<Books> bList) {
        List<Books> newPriceList = new ArrayList<>();
        for (int i = 0; i < bList.size(); i++) {
            if (bList.get(i).getPrice() != 0) {
                bList.get(i).setPrice(bList.get(i).getPrice() - 5);
            }
            Books book = new Books(bList.get(i).getId(), bList.get(i).getTitle(), bList.get(i).getPrice());
            newPriceList.add(book);
        }
        return newPriceList;
    }
}
