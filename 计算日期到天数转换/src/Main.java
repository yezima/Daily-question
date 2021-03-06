import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        while (sc.hasNext()) {
            int year = sc.nextInt();
            int month = sc.nextInt();
            int day = sc.nextInt();
            int Day = outDay(year, month, day);
            System.out.println(Day);
        }
        sc.close();
    }

    private static int outDay(int year, int month, int day) {
        //定义数组，这里2月的天数取28，假设是平年。
        int[] Day = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        //对年进行添加判断以及求余
        if (year <= 0 || month <= 0 || month > 12 || day <= 0 || day > Day[month - 1])
            return -1;
        //如果是闰年，那么2月应该有29天。
        if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
            Day[1] = 29;
        }
        int sum = 0;
        //这里要注意，如果是5月14日，5月这一个月不能算进去，算前4个月。
        for (int i = 0; i < month - 1; i++) {
            sum += Day[i];
        }
        //最后sum需要加上当前月份的日期。
        return sum + day;
    }
}