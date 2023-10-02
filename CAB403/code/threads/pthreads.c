#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

long double sum;           /* this data is shared by the thread(s) */
void *runner(void *param); /* threads call this function */

int main(int argc, char **argv)
{
    pthread_t thread_id;        /* thread identifier */
    pthread_attr_t thread_attr; /* thread attributes */

    if (argc != 2)
    {
        fprintf(stderr, "usage: a.out <integer value>\n");
        return -1;
    }
    if (atoi(argv[1]) < 0)
    {
        fprintf(stderr, "%d must be >= 0\n", atoi(argv[1]));
        return -1;
    }
    /* get default attributes */
    pthread_attr_init(&thread_attr);
    /* create the thread */
    pthread_create(&thread_id, &thread_attr, runner, argv[1]);
    /* wait for the thread to exit */
    pthread_join(thread_id, NULL);
    printf("sum = %Lf\n", sum);
}

/* thread executes this function */
void *runner(void *param)
{
    int i, upper = atoi(param);
    sum = 0;
    for (i = 1; i <= upper; i++)
    {
        sum += i;
    }
    pthread_exit(0);
}