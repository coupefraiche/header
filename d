#ifndef FORMULE_H_INCLUDED
#define FORMULE_H_INCLUDED

typedef enum{
	ADDITION, SOUSTRACTION, PRODUIT, QUOTIENT, PUISSANCE, MODULO
}operateur;

typedef enum{
	SINUS, COSINUS, TANGENTE, EXPONENTIELLE, RACINE, LOGARITHME, ABSOLUE
} fonction;

typedef enum{
	ERR_100, ERR_101, ERR_102, ERR_103, ERR_104, ERR_200, ERR_300 // à changer
} error;

typedef union{
	operateur op;
	fonction fct;
	error err; // à changer
	float reel;
} valeurnoeud;

typedef enum{
	OPERATEUR, FONCTION, REEL, ERROR, PARENTHESE_O, PARENTHESE_F, VARIABLE, FIN
} typelex;

typedef struct jetonSt{
	typelex type;
	valeurnoeud valeur;

} * Jeton;

typedef struct nodeSt{
	struct nodeSt * fg;
	struct nodeSt * fd;
	jeton token;
} * Node;
typedef Node *Arbre;

#endif // FORMULE_H_INCLUDED
