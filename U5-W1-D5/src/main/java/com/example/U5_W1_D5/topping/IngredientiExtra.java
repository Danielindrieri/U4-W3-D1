package com.example.U5_W1_D5.topping;

import com.example.U5_W1_D5.Item.Item;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class IngredientiExtra extends Item {
        private String nome;
        private double prezzo;
        private int calorie;

}
