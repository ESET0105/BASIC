

namespace ass01_DLMS
{
    public class Obiscode
    {
        void dlms_get(uint8_t obis[6]){
            for (int i=0;i<meterobjectcount;i++){
                if (obis_match(obis , meterobjects[i].obis)){
                    print("[Get] %s = %d\n", meterobjects[i].name, meterobjects[i].value);
                    return;
                }
            }
        }

        printf([GET] %s = %d\n  , meterobjects[i].name, meterobjects[i].value);


        void dlms_set(uint8_t obis[6],int32_t newvalue){
            for (int i=0; i<meterobjectcount;i++){
                if (obis_match(obis , meterobjects[i].obis)){
                meterobjects[i].value = newvalue;
                printf("[set] %s updated to %d\n" , meterobjects[i].name , newvalue);
                return;
            }}
            printf("[set] OBIS not found \n");
        }

        void dlms_action(uint8_t obis[6] , const char* method){
            if (strcmp(method , "RESET")==0){
                printf("{ACtion} Resetting meter values....\n");
                for (int i=0;i<meterobjectcount;i++){
                    meterobjects[i].value = 0;
                }
                printf("[ACTION] reset complete.\n");
            }
            else if (strcmp(method , "SYNC_Time")==0){
                printf("[ACTION] synchronizing meter clock to system time")
            }
        }

    }

}