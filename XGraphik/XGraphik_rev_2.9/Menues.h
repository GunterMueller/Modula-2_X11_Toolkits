typedef struct
{
        int anz;
        char *label;
        char *entries[30];
        void (*notify)(int);
        Menu contents;
	Frame frame;
}       tMenu;

