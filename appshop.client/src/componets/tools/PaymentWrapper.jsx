import { useParams } from "react-router-dom";
import Payment from '../page/Payment';
export default function PaymentWrapper() {
  const { refId } = useParams();

  return (
    <Payment
      isSuccess={true}
      refId={refId}
    />
  );
}
