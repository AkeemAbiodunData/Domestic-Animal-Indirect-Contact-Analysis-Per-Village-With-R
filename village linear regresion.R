setwd("C:/Users/Admin/Desktop/Project/analysis/Statistical/Agric")

getwd()

animal_contact = read.csv("animal contact (direct=TL,TD,BL,BD and indirect=S,F) per village.csv")

animal_contact

colnames(animal_contact) <- animal_contact[1, ]
animal_contact <- animal_contact[-1, ]

rownames(animal_contact) <- NULL


str(animal_contact)
head(animal_contact)



animal_contact[] <- lapply(animal_contact, function(x) as.numeric(as.character(x)))


animal_contact$total_contacts <- rowSums(animal_contact[, -1], na.rm = TRUE)



model <- lm(total_contacts ~ ., data = animal_contact[, -1])


summary(model)


