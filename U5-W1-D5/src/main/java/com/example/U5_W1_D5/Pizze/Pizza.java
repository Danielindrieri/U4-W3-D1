package com.example.U5_W1_D5.Pizze;

import com.example.U5_W1_D5.Item.Item;
import com.example.U5_W1_D5.topping.IngredientiExtra;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.stream.Collectors;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Pizza  extends Item {
    private List<IngredientiExtra> toppings;
    private boolean isXL;


    public Pizza(String nome, double prezzo, int calorie, List<IngredientiExtra> toppings, boolean isXL) {
        super(nome, isXL ? prezzo + 2.0 : prezzo, String.valueOf(isXL ? calorie + 100 : calorie));

        this.toppings = toppings;
        this.isXL = isXL;
    }

    @Override
    public String toString() {
        String toppingsString = toppings.isEmpty() ? "Nessun toppings" :
                toppings.stream().map(IngredientiExtra::getNome).collect(Collectors.joining(", "));

        return String.format("%s %s - Prezzo: %.2f€, Calorie: %d, Topping: %s",
                nome, isXL ? "(XL)" : "", prezzo, calorie, toppingsString);

    }
}
